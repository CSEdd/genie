module KMeansClustering where

data Point = Point {pointX, pointY :: Int} deriving (Show, Eq)
data Points = Points [Point] deriving (Show, Eq)
data Cluster = Cluster [Point] deriving (Show, Eq)
data Clusters = Clusters [Cluster] deriving (Show, Eq)
data Centroid = Point deriving (Show, Eq)

