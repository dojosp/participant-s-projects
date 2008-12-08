import unittest


def roman2deciman(rom):
    if rom == 'IV':
	return 5
    else:
        return len(rom)

    if rom == 'I':
        return 1
    else:
        return 2

class StubTests(unittest.TestCase):
    def testFoo(self):
        self.assertEquals(roman2deciman('I'), 1)
        self.assertEquals(roman2deciman('II'), 2)
        self.assertEquals(roman2deciman('III'), 3)

    def testBar(self):
        self.assertEquals(roman2deciman('IV'), 4)




if __name__ == '__main__':
    unittest.main()

