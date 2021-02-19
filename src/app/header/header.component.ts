import {Component, OnInit} from '@angular/core';
import {log} from 'util';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styles: []
})
export class HeaderComponent implements OnInit {
  constructor() {
  }

  save = () => {
    console.log('test');
  }

  ngOnInit(): void {
  }
}
