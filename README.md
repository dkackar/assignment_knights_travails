# assignment_search
Marco?  Polo!

[A data structures and algorithms Ruby challenge from the Viking Code School](http://www.vikingcodeschool.com)
Deepa Kackar, Thomas Lo

1. What data structure is used to implement DFS?
	Stacks are common data structures for DFS. You'll want to include the least desirable path onto the stack first. 

2. What data structure is typically used to implement BFS?
	Queues are used, in order to queue up neighboring paths before it's children.

3. Which one can be done recursively? (the clue should be the data structure)
	DFS can be done recursive like using a stack

4. Which one would you use to print a list of all the nodes in a tree or graph, starting with depth 1, then depth 2, then depth 3 etc.?
	You would use breadth first search so you can print each depth before moving to the next.

5. What is the difference between a tree and a graph?
	Trees will follow a set of rules, while graphs are much more free. They allow for more complex relationships between nodes.

PSEUDO

1. Searching a simple tree of nodes where each Node has an array of child nodes (some_node.children) using DFS.
	
	Starting from the root node, include root node into bottom of stack.
	Check it's child nodes and include the least desirable path first.
	The more desirable path should be ontop and check it's child nodes
	Repeat until no more paths are available, pop noded out of stack

2. Searching the same tree using BFS.
	
	1 Enque the root node into a que, and check it's child element
	2 Enque the more desirable child element firsts and so on
	3 Deque the first element in que and check the next element's childs
	4 Repeat step 2 & 3 until no element in que


3. Searching a graph (represented however you feel most comfortable -- Edge List, Adjacency List or Adjacency Matrix) using DFS.

	Adjacency List
	Go to the first bucket and check all it's nodes until node points to nil
	Move on to the next bucket and repeat until you look through all buckets

4. Searching the same graph using BFS.

	Adjacency List
	Check the first node in each bucket
	Check the second node in each bucket
	Repeat until all the nodes are checked