
CREATE TABLE todolist (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP
);

INSERT INTO todolist (title, details, priority, created_at) VALUES ('clean', 'take car to carwash', 3, NOW());
INSERT INTO todolist (title, details, priority, created_at) VALUES ('work', 'leave early to not be late', 1, NOW());
INSERT INTO todolist (title, details, priority, created_at, completed_at) VALUES ('brush', 'brush the cats fur', 2, NOW(), NOW());
INSERT INTO todolist (title, priority, created_at) VALUES ('add to do', 5, NOW());
INSERT INTO todolist (title, details, priority, created_at) VALUES ('drive', 'drive to school', 1, NOW());
INSERT INTO todolist (title, priority, created_at, completed_at) VALUES ('jog', 2, NOW(), NOW());
INSERT INTO todolist (title, priority, created_at) VALUES ('dance', 1, NOW());
INSERT INTO todolist (title, details, priority, created_at, completed_at) VALUES ('homework', 'do a lot of coding', 4, NOW(), NOW());
INSERT INTO todolist (title, details, priority, created_at) VALUES ('lift', 'lift about 100 pounds', 2, NOW());
INSERT INTO todolist (title, priority, created_at) VALUES ('something', 1, NOW());
INSERT INTO todolist (title, priority, details, created_at, completed_at) VALUES ('music', 3, 'make a couple of songs', NOW(), NOW());
INSERT INTO todolist (title, priority, created_at) VALUES ('jumping jacks', 4, NOW());
INSERT INTO todolist (title, priority, created_at) VALUES ('sprints', 1 , NOW());
INSERT INTO todolist (title, details, priority, created_at) VALUES ('hurdles', 'jump over the hill a few times', 1, NOW());
INSERT INTO todolist (title, priority, created_at, completed_at) VALUES ('iron', 1, NOW(), NOW());
INSERT INTO todolist (title, priority, created_at) VALUES ('read', 1, NOW());
INSERT INTO todolist (title, details, priority, created_at) VALUES ('edit', 'make corrections to paper', 3, NOW());
INSERT INTO todolist (title, priority, created_at) VALUES ('walk', 1, NOW());
INSERT INTO todolist (title, details, priority, created_at) VALUES ('soccer', 'goto my soccer game', 1, NOW());
INSERT INTO todolist (title, priority, created_at) VALUES ('finish', 5, '2017-08-21 11:32:14.811146');

SELECT * FROM todolist WHERE priority = 3 AND completed_at IS NULL;
SELECT priority, COUNT(*) AS incompleted FROM todolist WHERE completed_at IS NULL GROUP BY priority;
SELECT * FROM todolist WHERE created_at > date('now') - interval '30 day' ORDER BY priority;
SELECT * FROM todolist WHERE completed_at IS NULL ORDER BY created_at, priority LIMIT 1;
