import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface _SERVICE {
  'checkbalance' : ActorMethod<[], number>,
  'compound' : ActorMethod<[], undefined>,
  'topup' : ActorMethod<[number], undefined>,
  'withdrwal' : ActorMethod<[number], undefined>,
}
