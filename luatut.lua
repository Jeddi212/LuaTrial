print("Hello World")

-- Comments
--[[
Multi 
Comments 
]]--

-- Global by default
name = "Jeddi"

io.write("Size \"of string\" ", #name, "\n")

name = 4

io.write("My name is ", name, "\n")


-- Floating Point
bigNum = 9222337203749242132132 + 1

io.write("Big Number ", type(bigNum), "\n")
-- Number integer di anggap numbers
-- 13 Digit precise
floatPrecision = 1.999999999999 + 0.000000000005
io.write(floatPrecision)

-- Raw string apa adanya
longString = [[
I am a vvery very long 
string that goes onn
forever    sadas

!]]

io.write(longString, "\n")

-- Concate String
name = "Jeddi\n"

longString = longString .. name

io.write(longString)

-- boolean
isAbleToDrive = true

io.write(type(isAbleToDrive), "\n")

-- Nil
-- io.write(type(madeUpVar), "\n")
-- semua nya (variable baru) diassigned sebagai nil kalau tidak di assign secara spesifik

io.write("5 + 3 = ", 5+3, "\n")
io.write("5 - 3 = ", 5-3, "\n")
io.write("5 * 3 = ", 5*3, "\n")
io.write("5 / 3 = ", 5/3, "\n")
io.write("5.2 % 3 = ", 5%3, "\n")
io.write("5 ^ 3 = ", 5^3, "\n")
number = 1
number = number + 1
io.write(number, "\n")

-- built in math
-- Math Functions: floor, ceil, max, min, sin, cos, tan
-- asin, acos, exp, log, log10, pow, sqrt, random, randomseed

io.write("floor(2.345 : ", math.floor(2.345), "\n")
io.write("ceil(2.345 : ", math.ceil(2.345), "\n")
io.write("max(2, 3) : ", math.max(2, 3), "\n")
io.write("min(2, 3) : ", math.min(2, 3), "\n")
-- io.write("pow(8, 2) : ", math.pow(8, 2) , "\n")
-- 8 ^ 2
io.write("sqrt(64) : ", math.sqrt(64) , "\n\n")


-- Random numbers
io.write("math.random() : ", math.random(), "\n")

io.write("math.random(10) : ", math.random(10), "\n")

io.write("math.random(5,100) : ", math.random(5,100), "\n")

math.randomseed(os.time())

print(string.format("Pi = %.3f", math.pi))

--[[
Condition
Relational Operators : < > <= >= == ~=
Logical Operator : and or not
]]--

age = 13

if age < 16 then
    io.write("You can go to school\n")
    local localVal = 10
elseif (age <= 16) and (age < 18) then
    io.write("You can drive\n")
else
    io.write("You can vote\n")
end

-- print(localVar)   - nil

if (age < 14) or (age > 67) then io.write("You shouldn't work \n\n") end

print(string.format("not true = %s", tostring(not true)))

-- Tenary
-- X can't like this 
-- canVote = age > 18 ? true : false
canVote = age > 18 and true or false
io.write("can i vote : ", tostring(canVote))

-- ga ada switch

io.write("\n\n")

quote = "dsadkjsahdkjsa password sajkdhsa kjdh sa I sakjdh asd I"

io.write("Quote Length ", #quote, "\n")
io.write("Quote Length ", quote, "\n\n")

io.write("Replace I with me : ", string.gsub(quote, "I", "ME"), "\n")

io.write("Index of password : ", string.find(quote, "password"), "\n")

io.write("Quote Upper : ", string.upper(quote), "\n")
io.write("Quote Lower : ", string.lower(quote), "\n\n")


-- LOOP

i = 1

while i <= 10 do
    io.write(i)
    i = i + 1

    if i == 8 then break end
end
print("\n\n")

-- repeat
--     io.write("Enter your guess : ")

--     guess = io.read()
-- until tonumber(guess) == 15
print("\n\n")

for i = 1, 10, 1 do
    io.write(i)
end
print("\n")
for i = 10, 0, -1 do
    io.write(i)
end
print("\n")
print("\n by default +1 bisa di omit")
for i = 5, 15 do
    io.write(i)
end
print("\n\n")

--TABLE
-- like an array

months = {"January", "February", "March"}

for key, value in ipairs(months) do
    io.write(key, " ")
    io.write(value, " ")
end
-- ipairs biasanya buat array || dia ignore key yang non numerik
-- pairs biasanya buat dictionaries

print("\n\n")

aTable = {}

for i = 1, 10, 1 do
    aTable[i] = i
end

io.write("First : ", aTable[1], "\n")
io.write("Number of items : ", #aTable, "\n")

-- nama, index, value
table.insert(aTable, 1, 0)
io.write("First : ", aTable[1], "\n")
-- di lua mulai dari index 1 by default

io.write("Value : ", aTable[10], "\n")

print(table.concat(aTable, ", "))

print("First : ", aTable[1], "\n")

-- remove specific item by index (key)
table.remove(aTable, 1)
print(table.concat(aTable, ", "))

print("First : ", aTable[1], "\n")

--Multidimensional Tables
aMultiTable = {}

for i = 0, 9 do
    aMultiTable[i] = {}
    for j = 0, 9 do
        aMultiTable[i][j] = tostring(i) .. tostring(j)
    end
end

io.write("Table[1][2] : ", aMultiTable[1][2], "\n")

for i = 0, 9 do
    for j = 0, 9 do
        io.write(aMultiTable[i][j], " : ")
    end
    print()
end

print()

-- Functions
function getSum(num1, num2)
    return num1 + num2
end

print(string.format("5 + 2 = %d", getSum(5, 2)))

function splitStr(theString)
    stringTable = {}

    local i = 1

    for word in string.gmatch(theString, "[^%s]+") do
        stringTable[i] = word
        i = i + 1
    end

    return stringTable, i
end

splitStrTable, numOfStr = splitStr("The Turtle")

for j = 1, numOfStr-1 do
    print(string.format("%d : %s", j, splitStrTable[j]))
end


-- Attic Functions (unknown number of parameters) 
function getSumMore(...)
    local sum = 0

    for k, v in pairs{...} do
        sum = sum + v
    end
    return sum
end

io.write("\nSum ", getSumMore(1, 2, 3, 4, 5, 6), "\n\n\n")

-- Store function into variables
doubleIt = function (x) return x * 2 end

print(doubleIt(4))


-- Closure 
function outerFunc()
    local i = 0

    return  function ()
        i = i + 1
        return i
    end
end

getI = outerFunc()

print(getI())
print(getI())
-- (NYIMPEN DATA WALAU UDH DIPANGGIL BERULANG KALI FUNCTIONNYA)
-- MUNGKIN KARENA DI SIMPEN KE VARIABLES

print()

-- Coroutines (Thread Like)
co = coroutine.create(function ()
    for i = 1, 10, 1 do
        print(i)
        print(coroutine.status(co))
        if i == 5 then coroutine.yield() end
    end
end)

print(coroutine.status(co))

coroutine.resume(co)

print(coroutine.status(co))


co2 = coroutine.create(function ()
    for i = 101, 110, 1 do
        print(i)
    end
end)

coroutine.resume(co2)
coroutine.resume(co)
print(coroutine.status(co))
print("\n\n")

-- FILE I/O
--[[
    r: read only (default)
    w: overwrites on create a new file
    a: append or create a new file
    r+: read & write existing file
    w+: overwrite read or create a file
    a+: append read or create file
]]--

-- file = io.open("test.lua", "w+")

-- file:write("Random String of text\n")
-- file:write("Some more text\n")

-- --memposisikan cursor di file
-- file:seek("set", 0)

-- print(file:read("*a"))

-- file:close()

-- file = io.open("text.lua", "a+")

-- file:write("Even more text\n")
-- file:seek("set", 0)

-- print(file:read("*a"))
-- file:close()

-- modules
package.path = package.path .. ";C:/Users/Jeddi/LuaProjects/" .. [[/?.lua]]
convertModule = require("tutor.convert")

print(string.format("%.3f cm", convertModule.ftToCm(12)))


-- Meta Tables
aTable = {}

for x = 1, 10 do
    aTable[x] = x
end

-- kek static function gitu ke sebuah table
-- Merubah behaviour dari tables
mt = {
    __add = function (table1, table2)
        sumTable = {}

        for y = 1, #table1 do
            if (table1[y] ~= nil) and (table2[y] ~= nil) then
                sumTable[y] = table1[y] + table2[y]
            else
                sumTable[y] = 0
            end
        end

        return sumTable
    end,

    __eq = function (table1, table2)
        return table1.value == table2.value
    end,

    __lt = function (table1, table2)
        return table1.value < table2.value
    end,

    __gt = function (table1, table2)
        return table1.value <= table2.value
    end,
}

setmetatable(aTable, mt)

print(aTable == aTable)

addTable = {}

addTable = aTable + aTable

for z = 1, #addTable do
    print(addTable[z])
end

print("\n\n")

-- Object Oriented
Animal = {
    height = 0,
    weight = 0,
    name = "No Name",
    sound = "No Sound"
}

function Animal:new(height, weight, name, sound)
    setmetatable({}, Animal)

    self.height = height
    self.weight = weight
    self.name = name
    self.sound = sound

    return self
end

function Animal:toString()
    animalStr = string.format(
        "%s weighs %.1f lbs, is %.1f in tall and says %s", 
        self.name, self.weight, self.height, self.sound
    )
    return animalStr
end

local spot = Animal:new(10, 15, "Spot", "Woof")

print(spot.weight)

print(spot:toString())

print()

local lui = Animal:new(89, 55, "Lui", "Jazzz")

print(lui:toString())

print()

Cat = Animal:new()

function Cat:new(height, weight, name, sound, favFood)
    setmetatable({}, Cat)

    self.height = height
    self.weight = weight
    self.name = name
    self.sound = sound
    self.favFood = favFood

    return self
end

function Cat:toString()
    animalStr = string.format(
        "%s weighs %.1f lbs, is %.1f in tall and says %s and loves %s", 
        self.name, self.weight, self.height, self.sound, self.favFood
    )
    return animalStr
end

fluffy = Cat:new(20, 30, "Fluffy", "Meow", "Tuna")

print(fluffy:toString())