import logging

## create configuration for logging setup

logging.basicConfig(
    level=logging.DEBUG,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    datefmt='%Y-%m-%d %H:%M:%S',
    handlers=[
        logging.FileHandler("./Logging/app.log"),
        logging.StreamHandler()
    ]
)

logger = logging.getLogger("Arithmetic App..!")

def Add(a,b):
     res = a+b
     logger.debug(f"Adding of {a} & {b} : {res}")

def Sub(a,b):
     res = a-b
     logger.debug(f"Subtraction of {a} & {b} : {res}")

def Mul(a,b):
     res = a*b
     logger.debug(f"Multilication of {a} & {b} : {res}")

def Divide(a,b):
     try:
          res = a/b
          logger.debug(f"Dividing of {a} & {b} : {res}")
          return res
     except ZeroDivisionError:
          logger.error("Division By Zero Error..!")
          return None
     
Add(10,15)
Sub(15,10)
Mul(10,20)
Divide(20,0)
