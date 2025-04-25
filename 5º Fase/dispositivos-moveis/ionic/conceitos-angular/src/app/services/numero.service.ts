import { Injectable } from '@angular/core';

enum TipoNumero 
{
  PAR = 'par',
  IMPAR = 'impar',
}

@Injectable({
  providedIn: 'root'
})
export class NumeroService {
  public verificar(number: number): TipoNumero 
  {
    return number % 2 === 0 ? TipoNumero.PAR : TipoNumero.IMPAR;
  }
}
