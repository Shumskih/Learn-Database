INSERT INTO developers (id, name, specialization, experience) VALUES (1, 'Ivan Kazakov', 'Java', 2);
INSERT INTO developers (id, name, specialization, experience) VALUES (2, 'Nadezhda Krasnova', 'C++', 1);
INSERT INTO developers (id, name, specialization, experience) VALUES (3, 'Andrei Kazachkov', 'Python', 3);
INSERT INTO developers (id, name, specialization, experience) VALUES (4, 'Kirill Tetukhov', 'Ruby', 2);
INSERT INTO developers (id, name, specialization, experience) VALUES (5, 'Anna Tereshkova', 'JavaScript', 1);

INSERT INTO skills (id, name) VALUES (1, 'Java');
INSERT INTO skills (id, name) VALUES (2, 'C++');
INSERT INTO skills (id, name) VALUES (3, 'JavaScript');
INSERT INTO skills (id, name) VALUES (4, 'Node.js');
INSERT INTO skills (id, name) VALUES (5, 'C#');
INSERT INTO skills (id, name) VALUES (6, 'Python');
INSERT INTO skills (id, name) VALUES (7, 'Ruby');

INSERT INTO projects (id, name, version) VALUES (1, 'Java Game', '1.0');
INSERT INTO projects (id, name, version) VALUES (2, 'Java Web Server', '5.1.2');
INSERT INTO projects (id, name, version) VALUES (3, 'Web Site', '2.0.10');
INSERT INTO projects (id, name, version) VALUES (4, 'Solitaire', '4.9.2223');
INSERT INTO projects (id, name, version) VALUES (5, 'Framework', '7.3');
INSERT INTO projects (id, name, version) VALUES (6, 'CMS', '2.2');

INSERT INTO companies (id, name) VALUES (1, 'Ars24');
INSERT INTO companies (id, name) VALUES (2, 'Dkrs');
INSERT INTO companies (id, name) VALUES (3, 'Bdo unicom');
INSERT INTO companies (id, name) VALUES (4, 'Go Staff');
INSERT INTO companies (id, name) VALUES (5, 'Dataline');

INSERT INTO customers (id, name) VALUES (1, 'Aram Hachaturyan');
INSERT INTO customers (id, name) VALUES (2, 'Nikolai Gogolj');
INSERT INTO customers (id, name) VALUES (3, 'Petr Chaikovskyi');
INSERT INTO customers (id, name) VALUES (4, 'Mikhail Glinka');
INSERT INTO customers (id, name) VALUES (5, 'Aleksandr Pushkin');
INSERT INTO customers (id, name) VALUES (6, 'Фёдор Достоевкий');

INSERT INTO developers_skills (developer_id, skills_id) VALUES (1, 1);
INSERT INTO developers_skills (developer_id, skills_id) VALUES (2, 2);
INSERT INTO developers_skills (developer_id, skills_id) VALUES (3, 6);
INSERT INTO developers_skills (developer_id, skills_id) VALUES (4, 7);
INSERT INTO developers_skills (developer_id, skills_id) VALUES (5, 3);
INSERT INTO developers_skills (developer_id, skills_id) VALUES (5, 4);
INSERT INTO developers_skills (developer_id, skills_id) VALUES (2, 5);
INSERT INTO developers_skills (developer_id, skills_id) VALUES (1, 7);
INSERT INTO developers_skills (developer_id, skills_id) VALUES (1, 3);

INSERT INTO projects_developers (project_id, developer_id) VALUES (1, 1);
INSERT INTO projects_developers (project_id, developer_id) VALUES (1, 5);
INSERT INTO projects_developers (project_id, developer_id) VALUES (3, 3);
INSERT INTO projects_developers (project_id, developer_id) VALUES (4, 2);
INSERT INTO projects_developers (project_id, developer_id) VALUES (5, 4);

INSERT INTO companies_projects (company_id, project_id) VALUES (2, 1);
INSERT INTO companies_projects (company_id, project_id) VALUES (2, 2);
INSERT INTO companies_projects (company_id, project_id) VALUES (4, 5);
INSERT INTO companies_projects (company_id, project_id) VALUES (4, 6);
INSERT INTO companies_projects (company_id, project_id) VALUES (4, 4);
INSERT INTO companies_projects (company_id, project_id) VALUES (1, 3);

INSERT INTO customers_projects (customer_id, project_id) VALUES (1, 3);
INSERT INTO customers_projects (customer_id, project_id) VALUES (4, 2);
INSERT INTO customers_projects (customer_id, project_id) VALUES (2, 5);
INSERT INTO customers_projects (customer_id, project_id) VALUES (6, 1);
INSERT INTO customers_projects (customer_id, project_id) VALUES (6, 6);
INSERT INTO customers_projects (customer_id, project_id) VALUES (3, 4);

INSERT INTO companies_projects_customers (company_id, project_id, customer_id) VALUES (2, 1, 6);
INSERT INTO companies_projects_customers (company_id, project_id, customer_id) VALUES (2, 2, 4);
INSERT INTO companies_projects_customers (company_id, project_id, customer_id) VALUES (4, 5, 2);
INSERT INTO companies_projects_customers (company_id, project_id, customer_id) VALUES (4, 6, 6);
INSERT INTO companies_projects_customers (company_id, project_id, customer_id) VALUES (4, 4, 3);
INSERT INTO companies_projects_customers (company_id, project_id, customer_id) VALUES (1, 3, 1);