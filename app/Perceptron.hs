{-# LANGUAGE TemplateHaskell #-}

module Perceptron where

import Development.Placeholders

type Signal = Float
type Weight = Float
type WeightedSignal = Float

data InputSignals = InputSignals [Signal] deriving (Show)
data Weights = Weights [Weight] deriving (Show)
data WeightedInputSignals =  WeightedInputSignals [WeightedSignal] deriving (Show)

initialiseWeights is = InputSignals -> Weights
initialiseWeights is = Weights . replicate (length is) 0

weightedInputSignals = InputSignals -> Weights -> WeightedInputSignals
weightedInputSignals is w = zipWith (*) is w

weightedSum = WeightedInputSignals -> Int
weightedSum wis = foldl' (+) 0 wis

activationFunction x = Int -> Int
activationFunction x
    | x < 0  = -1
    | x >= 0 = 1
