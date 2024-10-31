import { Routes } from '@angular/router';
import {LoginComponent} from "./components/login/login.component";
import {AppComponent} from "./app.component";
import {LayoutComponent} from "./components/layout/layout.component";

export const routes: Routes = [
    {
    path: '',
    component: LayoutComponent,
    children: [
     { path: 'home', component: AppComponent },
    ]
  },
     {
    path: 'auth',
    component: LayoutComponent,
    children: [
     { path: 'login', component: AppComponent },
    ]
  },

];
