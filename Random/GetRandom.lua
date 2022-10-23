---This returns a random float between 0 and 1. It is inclusive on the low end, but exclusive on the
---high end. (This is because the `RNG.RandomFloat` method will never return a value of exactly 1.)
---@param seedOrRNG RNG | number | nil Optional. The `Seed` or `RNG` object to use. If an `RNG` object is provided, the `RNG.Next` method will be called. Default is `TSIL.RNG.GetRandomSeed()`.
---@return number
function TSIL.Random.GetRandom(seedOrRNG)
    local rng

    if TSIL.IsaacAPIClass.IsRNG(seedOrRNG) then
        rng = seedOrRNG
    else
        rng = TSIL.RNG.NewRNG(seedOrRNG)
    end

    return rng:RandomFloat()
end