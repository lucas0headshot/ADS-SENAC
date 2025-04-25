import { TestBed } from '@angular/core/testing';

import { NumeroService } from './numero.service';

describe('NumeroService', () => {
  let service: NumeroService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(NumeroService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
