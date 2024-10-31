import { Component } from '@angular/core';
import {FormsModule} from "@angular/forms";

@Component({
  selector: 'app-layout-auth',
  standalone: true,
  imports: [
    FormsModule
  ],
  templateUrl: './layout-auth.component.html',
  styleUrl: './layout-auth.component.scss'
})
export class LayoutAuthComponent {
  username: string = "";
  password: string = "";
}
