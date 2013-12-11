# encoding:utf-8

import random

def main():
    rl = RandList(300, 1000)
    rl.gen_random_list()
    rl.print_block_list()

class RandList(object):

    def __init__(self, first, second):
        self.first = first
        self.second = second
        self.populacao = []

    def gen_random_list(self):
        self.populacao = range(self.first, self.second)
        del self.populacao[28]
        random.shuffle(self.populacao)

    def print_block_list(self):
        print "[",
        for i in range(15):
            for j in range(15):
                print "%3d," % self.populacao[i*15+j],
        print "]"


if __name__ == "__main__":
    main()
