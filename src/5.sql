SELECT companies.name AS company, projects.name AS project, min(projects.cost), customers.name AS customer
FROM companies
  INNER JOIN companies_projects_customers ON companies.id = companies_projects_customers.company_id
  INNER JOIN projects ON projects.id = companies_projects_customers.project_id
  INNER JOIN customers ON customers.id = companies_projects_customers.customer_id
WHERE companies.name = 'Ars24'
GROUP BY companies.name, projects.name, customers.name, projects.cost
LIMIT 1;

SELECT companies.name AS company, projects.name AS project, min(projects.cost), customers.name AS customer
FROM companies
  INNER JOIN companies_projects_customers ON companies.id = companies_projects_customers.company_id
  INNER JOIN projects ON projects.id = companies_projects_customers.project_id
  INNER JOIN customers ON customers.id = companies_projects_customers.customer_id
WHERE companies.name = 'Dkrs'
GROUP BY companies.name, projects.name, customers.name, projects.cost
LIMIT 1;

SELECT companies.name AS company, projects.name AS project, min(projects.cost), customers.name AS customer
FROM companies
  INNER JOIN companies_projects_customers ON companies.id = companies_projects_customers.company_id
  INNER JOIN projects ON projects.id = companies_projects_customers.project_id
  INNER JOIN customers ON customers.id = companies_projects_customers.customer_id
WHERE companies.name = 'Go Staff'
GROUP BY companies.name, projects.name, customers.name, projects.cost
LIMIT 1;
