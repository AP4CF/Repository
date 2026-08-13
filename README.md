AP4CF: Automated Planning for Carbon Footprint Mitigation

![Python / PDDL](https://img.shields.io/badge/PDDL-2.1-blue?style=flat&logo=codeforces&logoColor=white)
![AI Planner](https://img.shields.io/badge/ENHSP--20-AI%20Planner-black?style=flat&logo=artificialintelligence&logoColor=white)
![Research](https://img.shields.io/badge/Research-Proof%20of%20Concept-success?style=flat&logo=science&logoColor=white)

This repository contains the PDDL 2.1 domains, problem instances, and execution guidelines for **AP4CF (Automated Planning for Carbon Footprint)**, a proof-of-concept research framework that models agricultural carbon footprint mitigation as a State Transition System (STS) solved via Automated Planning.

---

## Repository Structure

Make sure your working directory or folder structure contains the core PDDL files required by the planner:

1. **`domain-cf.pddl`**: Contains the general definition of the `mitigation-cf` planning domain, including numeric fluents (budget, emission levels) and action schemas.
2. **`instance-cf.pddl`**: Contains the specific problem instance (`problem-cf`), defining initial states ($s_0$), goal states ($S_g$), and optimization metrics.

---

## Prerequisites & Installation

To execute the planning instances, ensure you have the following installed:
* **Java Runtime Environment (JRE)** (Required to execute ENHSP-20).
* **ENHSP-20 (Expressive Numeric Heuristic Search Planner)**: Download the planner from the [official ENHSP repository/site](https://sites.google.com/view/enhsp/).

---

## Running ENHSP-20 from the Terminal

1. Open a terminal or command prompt in your operating system.
2. Navigate to your ENHSP-20 directory.
3. Execute the planner using the following command structure:

```bash
java -jar enhsp-20.jar -o /path/to/domain-cf.pddl -f /path/to/instance-cf.pddl
```
Replace /path/to/domain-cf.pddl and /path/to/instance-cf.pddl with the actual paths where your domain-cf.pddl and instance-cf.pddl files are stored.

**Example Execution**:
If your files are organized within a specific test instance folder (e.g., 3-actions_1-object), the command will look like this:

```bash
java -jar enhsp-20.jar -o /3-actions_1-object/domain-cf.pddl -f /3-actions_1-object/instance-cf.pddl
```

**Waiting for the Solution:**

ENHSP-20 will start planning a solution based on the criteria of minimizing the total budget used while achieving the emission reduction goals specified in the problem.

## Interpreting Results and Planning Criteria

* **Optimization Goal:** ENHSP-20 performs heuristic state-space search to find a valid sequence of mitigation actions that satisfies the emission reduction targets while minimizing the total budget used (as defined by the problem metric).

* **Output:** Once the planning process completes, the standard output displays the generated action plan, total plan length, search time, and state evaluation metrics.
