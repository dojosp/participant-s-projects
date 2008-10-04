module Trit where

--parseTrit "0" = 0
--parseTrit "+" = 1
--parseTrit "-" = -1
parseTrit xs = parseTrit' xs 0
--    (3 ^ (length xs)) * (parseTrit [x]) + (parseTrit xs)

parseTrit' "0" n = n + 0
parseTrit' "+" n = n + 1
parseTrit' "-" n = n - 1
parseTrit' (x:xs) n = parseTrit' xs (3*n + (parseSingleTrit x))

parseSingleTrit '0' = 0
parseSingleTrit '+' = 1
parseSingleTrit '-' = -1
