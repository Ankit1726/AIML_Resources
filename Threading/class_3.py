from concurrent.futures import ProcessPoolExecutor
import time

def square_number(number):
    time.sleep(2)
    return number * number

def main():
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 2, 3, 12, 14]

    with ProcessPoolExecutor(max_workers=3) as executor:
        for result in executor.map(square_number, numbers):
            print(result)

if __name__ == "__main__":
    main()
