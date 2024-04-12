import { WebPlugin } from '@capacitor/core';

import type { JPCFinanceKitPlugin } from './definitions';

export class JPCFinanceKitWeb extends WebPlugin implements JPCFinanceKitPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
