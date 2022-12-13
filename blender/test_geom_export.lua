-- Copyright 2016 Google Inc, NYU.
-- 
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
-- 
--     http://www.apache.org/licenses/LICENSE-2.0
-- 
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

local torch = require('torch')
local tfluids = require('tfluids')
dofile('../torch/lib/geom_export.lua')

local dim = 64
local arr = torch.FloatTensor(dim, dim, dim)
arr:zero()
arr[{{1, 64}, {24, 40}, {24, 40}}] = 0.9
arr[{{24, 40}, {1, 64}, {24, 40}}] = 0.9
arr[{{24, 40}, {24, 40}, {1, 64}}] = 0.9

tfluids.writeOutGeom("geom.obj", arr)
