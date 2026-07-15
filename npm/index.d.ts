declare module '@apiverve/cardgenerator' {
  export interface cardgeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface cardgeneratorResponse {
    status: string;
    error: string | null;
    data: TestCardGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface TestCardGeneratorData {
      brand: null | string;
      count: number | null;
      cards: Card[];
      owner: Owner;
  }
  
  interface Card {
      cvv:        number | null;
      issuer:     null | string;
      id:         null | string;
      number:     null | string;
      expiration: null | string;
      brand:      null | string;
      numberAlt:  NumberAlt;
  }
  
  interface NumberAlt {
      masked:   null | string;
      unmasked: null | string;
      last4:    null | string;
  }
  
  interface Owner {
      name:    null | string;
      address: Address;
      avatar:  null | string;
  }
  
  interface Address {
      street:  null | string;
      city:    null | string;
      state:   null | string;
      zipCode: null | string;
  }

  export default class cardgeneratorWrapper {
    constructor(options: cardgeneratorOptions);

    execute(callback: (error: any, data: cardgeneratorResponse | null) => void): Promise<cardgeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: cardgeneratorResponse | null) => void): Promise<cardgeneratorResponse>;
    execute(query?: Record<string, any>): Promise<cardgeneratorResponse>;
  }
}
