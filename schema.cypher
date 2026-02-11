// Clear database
MATCH (n)
DETACH DELETE n;

// Create nodes
CREATE
(s1:Student {name:"Yash", year:2}),
(s2:Student {name:"Rahul", year:1}),
(s3:Student {name:"Aman", year:2}),

(c1:Course {name:"Data Structures"}),
(c2:Course {name:"Database Systems"}),

(p1:Professor {name:"Dr Sharma"}),
(p2:Professor {name:"Dr Mehta"}),

(d1:Department {name:"Computer Science"});

// Create relationships
MATCH
(s1:Student {name:"Yash"}),
(s2:Student {name:"Rahul"}),
(s3:Student {name:"Aman"}),
(c1:Course {name:"Data Structures"}),
(c2:Course {name:"Database Systems"}),
(p1:Professor {name:"Dr Sharma"}),
(p2:Professor {name:"Dr Mehta"}),
(d1:Department {name:"Computer Science"})

CREATE
(s1)-[:ENROLLED_IN]->(c1),
(s2)-[:ENROLLED_IN]->(c1),
(s3)-[:ENROLLED_IN]->(c2),

(p1)-[:TEACHES]->(c1),
(p2)-[:TEACHES]->(c2),

(d1)-[:OFFERS]->(c1),
(d1)-[:OFFERS]->(c2);

// Add grade metadata
MATCH (s:Student {name:"Yash"}),
(c:Course {name:"Data Structures"})
CREATE (s)-[:SCORED {grade:"A"}]->(c);
