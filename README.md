# mitigation-cf


ENHSP-20 Install:

Ensure You Have ENHSP-20 Installed
You can download ENHSP-20 from the official site: ENHSP-20.


Required Files:

Make sure you have the following two files:

1. domain-cf.pddl: Contains the definition of the domain mitigation-cf.
2. instance-cf.pddl: Contains the problem instance problem-cf.

File Structure:
Place domain-cf.pddl and instance-cf.pddl in a folder that is accessible from the command line.


Running ENHSP-20 from the Terminal:

1. Open a terminal or command prompt in your operating system.

2. Navigate to the ENHSP-20 directory.

3. Use the following command to execute ENHSP-20 with the PDDL files:

Execution Command:

 `java -jar enhsp-20.jar -o /path/to/domain-cf.pddl -f /path/to/instance-cf.pddl`

Replace /path/to/domain-cf.pddl and /path/to/instance-cf.pddl with the actual paths where your domain-cf.pddl and instance-cf.pddl files are stored.

The command would look like this (Example):
`java -jar enhsp-20.jar -o /3-actions_1-object/domain-cf.pddl -f /3-actions_1-object/instance-cf.pddl`

Waiting for the Solution:

ENHSP-20 will start planning a solution based on the criteria of minimizing the total budget used while achieving the emission reduction goals specified in the problem.

Interpreting the Result:

Once ENHSP-20 completes the planning process, it will display the generated plan in the standard output, showing the sequence of actions required to meet the goals defined in problem-cf using the mitigation-cf domain.
