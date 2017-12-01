from pprint import pprint as pp
import math

def isPrime(number):
    i = 2
    while i < 1 + math.ceil(number/2):
        if(number%i != 0):
            i += 1
        else:
            return False
    return True

def getFactors(number, factors = []):
    i = 2
    while i <= 1+math.ceil(number/i):
        if number%i == 0 and i not in factors:
            factors.append(int(number/i))
            factors.append(i)
            pp(factors)
        i += 1
    return factors

def primeFact(number):
    nums = getFactors(number)
    pp(nums)
    nums = list( filter( lambda x: isPrime(x), nums ) )
    pp(nums)
    return max(nums)
pp(primeFact(600851475143))
