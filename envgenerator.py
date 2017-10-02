import shelve
import os
import re


testbench = ''


def gettestbench():
    # Open a shelve and write testbench environment files
    # Reopen it with below snippet when writing generated files
    # | with shelve.open('testbench') as testbench:
    global testbench
    testbench = shelve.open('testbench', flag='n')
    testbench['base_test'] = open("env/base_test.svh", 'r').readlines()
    testbench['sample_test'] = open("env/sample_test.svh", 'r').readlines()
    testbench['env'] = open("env/env.svh", 'r').readlines()
    testbench['agent'] = open("env/agent.svh", 'r').readlines()
    testbench['driver'] = open("env/driver.svh", 'r').readlines()
    testbench['sequencer'] = open("env/sequencer.svh", 'r').readlines()
    testbench['monitor'] = open("env/monitor.svh", 'r').readlines()

    testbench['env_pkg'] = open("env/env_pkg.sv", 'r').readlines()
    testbench['test_pkg'] = open("env/test_pkg.sv", 'r').readlines()
    # testbench.close()

    print(testbench)


def checkpath(envpath):
    if(not os.path.exists(envpath) and not os.path.isdir(envpath)):
        exit(0)


# Print directory listing for generated env
def envlisting():
    envdirs = os.walk('.')
    for envdir, envdirlist, envfiles in envdirs:
        print(envdir)
        for envlist in envdirlist:
            print(envlist)
        for envfile in envfiles:
            print(envfile)


def testbenchsetup():
    global testbench
    create_env('env', 'new_env')
    create_env('driver', 'new_driver')


def create_env(component, new_component):
    testbench[component] = re.sub(r'\b{0}\b'.format(component), new_component,''.join(testbench[component]))
    print(testbench[component])

    with open(new_component+'.svh', 'w') as svfile:
        svfile.write(testbench[component])


def main():

    gettestbench()
    testbenchsetup()
    # envlisting()


if __name__ == '__main__':
    main()
