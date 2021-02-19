import {Component, OnInit} from '@angular/core';
import {FormControl} from '@angular/forms';
import {Observable} from 'rxjs';
import {map, startWith} from 'rxjs/operators';

interface Coin {
  symbol: string;
  name: string;
}

@Component({
  selector: 'app-mapping',
  templateUrl: './mapping.component.html',
  styles: []
})
export class MappingComponent implements OnInit {
  data: Array<JSON>;
  buttons = ['1', '2', '3', '4', '5'];

  constructor() {
  }

  Coins: [Coin] = [{name: '', symbol: ''}];
  buttonMapping = new FormControl();
  filteredOptions: Observable<Coin[]>;

  ngOnInit(): void {
    const getCoins = async () => {
      const url = 'https://api.coingecko.com/api/v3/coins/list';
      const response = await fetch(url);
      this.data = await response.json();
      // console.log(this.data);
    };
    getCoins().then(() => {
      console.log(this.data);
      this.data.forEach((value) => {
          const name = value['name'];
          const symbol = value['symbol'];
          const coin: Coin = {name, symbol};
          this.Coins.push(coin);
      });
    });

    this.filteredOptions = this.buttonMapping.valueChanges.pipe(
      startWith(''),
      map(value => this._filter(value))
    );
  }

  private _filter(value: string): Coin[] {
    const filterValue = value.toLowerCase();
    return this.Coins.filter(coin =>
      coin.name.toLowerCase().indexOf(filterValue)  === 0 ||
      coin.symbol.toLowerCase().indexOf(filterValue) === 0);
  }
}
