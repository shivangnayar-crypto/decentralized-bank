export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'checkbalance' : IDL.Func([], [IDL.Float64], ['query']),
    'compound' : IDL.Func([], [], ['oneway']),
    'topup' : IDL.Func([IDL.Float64], [], ['oneway']),
    'withdrwal' : IDL.Func([IDL.Float64], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };
