module Perceptron where

{-# LANGUAGE TemplateHaskell #-}

import Development.Placeholders

data InputSignals = InputSignals [Float] deriving (Show)
data Weights = Weights [Float] deriving (Show)

weightedSum = InputSignals -> Weights -> Int
weightedSum inputSignals weights = $notImplemented

activationFunction x = Int -> Int
activationFunction x
    | x < 0  = -1
    | x >= 0 = 1
