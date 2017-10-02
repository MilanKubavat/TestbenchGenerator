_testcase = []


def get_testnames():
    global _testcase
    with open("testcases.txt", 'r') as testcases_txt:
        for test in testcases_txt:
            _testcase.append(test.strip('\n'))  # Strip removes line start/end matches only
        print(_testcase)


def test_stats():
    with open("stats.txt", 'w') as stats_txt:
        for test in _testcase:
            print(test, file=stats_txt)


def _main():
    get_testnames()
    test_stats()


if __name__ == '__main__':
    _main()
