import { Component, inject, NgModule } from '@angular/core';
import { IonHeader, IonToolbar, IonTitle, IonContent, IonInput, IonButton, IonText } from '@ionic/angular/standalone';
import { NumeroService } from '../services/numero.service';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
  imports: [IonHeader, IonToolbar, IonTitle, IonContent, IonInput, IonButton, IonText, FormsModule],
})
export class HomePage {
  private servico: NumeroService = inject(NumeroService);
  public numero: number = 1;
  public resultado: string = '';

  public verificarNumero()
  {
    this.resultado = `${this.numero} é ${this.servico.verificar(this.numero)}`;
  }
}
