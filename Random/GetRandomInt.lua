---This returns a random integer between min and max. It is inclusive on both ends.
---Note that this function will run the `Next` method on the `RNG` object before returning the
---random number.
---@param min number The lower bound for the random number (inclusive).
---@param max number The upper bound for the random number (inclusive)
---@param seedOrRNG number | RNG | nil Optional. The `Seed` or `RNG` object to use. If an `RNG` object is provided, the `RNG.Next` method will be called. Default is `TSIL.RNG.GetRandomSeed()`.
---@param exceptions number[] Optional. An array of elements that will be skipped over when getting the random integer. For example, a min of 1, a max of 4, and an exceptions array of `[2]` woudl cause the function to return either 1, 3, or 4. Default is an empty array.
---@return number
function TSIL.Random.GetRandomFloat(min, max, seedOrRNG, exceptions)
    exceptions = exceptions or {}

    local rng
    
    if TSIL.IsaacAPIClass.IsRNG(seedOrRNG) then
        rng = seedOrRNG
    else
        rng = TSIL.RNG.NewRNG(seedOrRNG)
    end

    min = math.ceil(min)
    max = math.floor(max)

    if min > max then
        local oldMin = min
        local oldMax = max
        min = oldMax
        max = oldMin
    end

    local exceptionDictionary = TSIL.Utils.Tables.ConstructDictionaryFromTable(exceptions)
    local randomInt
    
    repeat
        randomInt = rng:RandomInt(max - min + 1) + min
    until not exceptionDictionary[randomInt]

    return randomInt
end