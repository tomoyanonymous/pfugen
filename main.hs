type UGen sigin sigout s = sigin -> s -> (sigout, s)

connect :: UGen sigin sigmid state1 -> UGen sigmid sigout state2 -> UGen sigin sigout (state1, state2)
connect f g x s =
  let (sf, sg) = s
   in let (y1, sf1) = f x sf
       in let (y2, sg1) = g y1 sg
           in (y2, (sf1, sg1))

type PureFn sigin sigout = sigin -> sigout

lift :: PureFn sigin sigout -> UGen sigin sigout ()
lift f x s = (f x, ())

type RecUGen sig state = sig -> UGen sig sig state

recursion :: RecUGen sig state -> UGen sig sig (sig, state)
recursion recugen x s =
  let (y0, state) = s
   in let (y, s1) = recugen y0 x state
       in (y, (y, s1))

smooth :: Float -> UGen Float Float (Float, ())
smooth fb =
  let recugen = \self -> lift (\x -> x * fb + self * (1 - fb))
   in recursion recugen

type SigStream sig = [sig]

runUGen :: SigStream sigin -> (UGen sigin sigout state, state) -> SigStream sigout
runUGen input (ugen, s0) =
  let (x : xs) = input
   in let (y, s1) = ugen x s0
       in y : runUGen xs (ugen, s1)