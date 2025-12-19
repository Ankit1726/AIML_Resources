from logger import logging

def avg(a,b,c):
     logging.debug("Average of 3 Numbers..!")
     Avg = (a+b+c)/3
     return Avg

logging.debug("Average Function Called...!")
avg(34,56,78)