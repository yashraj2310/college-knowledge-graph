// Show all nodes
MATCH (n)
RETURN n;

// Who teaches Yash?
MATCH (s:Student {name:"Yash"})
-[:ENROLLED_IN]->(c)<-[:TEACHES]-(p)
RETURN s,c,p;

// Students sharing courses
MATCH (s1:Student)-[:ENROLLED_IN]->(c)<-[:ENROLLED_IN]-(s2)
WHERE s1 <> s2
RETURN s1,c,s2;

// Courses offered by department
MATCH (d:Department)-[:OFFERS]->(c)
RETURN d,c;

// Show full relationship network
MATCH (a)-[r]->(b)
RETURN a,r,b;

// View grades
MATCH (s)-[r:SCORED]->(c)
RETURN s,r,c;
