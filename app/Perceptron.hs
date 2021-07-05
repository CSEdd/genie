module Perceptron where

type Signal = Float
type Weight = Float
type WeightedSignal = Float

type Inputs = [Signal]
type Weights = [Weight]
type WeightedInputs = [WeightedSignal]

{-@ type ActivationValue = {v : Int | v == 0 || v == 1} @-}
{-@ perceptron :: Inputs -> ActivationValue @-}
perceptron inputs = 
    activationFunction . weightedSum . updateWeights . weightedInputs $ inputs (initialiseWeights inputs)

initialiseWeights :: Inputs -> Weights
initialiseWeights is = replicate (length is) 0

weightedInputs :: Inputs -> Weights -> WeightedInputs
weightedInputs is ws = zipWith (*) is ws

updateWeight :: Weight -> Weight
updateWeight w = w

updateWeights :: WeightedInputs -> WeightedInputs
updateWeights ws = map (updateWeight) ws

weightedSum :: WeightedInputs -> Int
weightedSum wis = foldl (+) 0 wis

activationFunction :: Int -> Int
activationFunction x
    | x < 0  = 0
    | x >= 0 = 1
