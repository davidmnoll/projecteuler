from pprint import pprint as pp

fibs = [1,1]
while fibs[-1] < 4000000:
    fibs.append(fibs[-1]+fibs[-2])

if fibs[-1] > 4000000:
    del fibs[-1]
pp(fibs)

even =  filter(lambda x: x%2 == 0, fibs)
pp( sum(list(even)) )


#print(sum)
