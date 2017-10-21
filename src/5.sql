DROP TABLE IF EXISTS first_table, second_table;

CREATE TEMP TABLE first_table AS (
  SELECT company_id AS company_id, customer_id AS customer_id, customers.name AS customer_name, projects.id, sum(projects.cost) AS sum
  FROM projects
    INNER JOIN companies_projects ON projects.id = companies_projects.project_id
    INNER JOIN customers_projects ON companies_projects.project_id = customers_projects.project_id
    INNER JOIN customers ON customers.id = customers_projects.customer_id
  GROUP BY company_id, customer_id, projects.id, customer_name
);


CREATE TEMP TABLE second_table AS (
  SELECT company_id, min(sum) AS min_sum
  FROM first_table
  GROUP BY company_id
);


SELECT first_table.customer_id, first_table.company_id, first_table.customer_name, first_table.sum
FROM first_table
  INNER JOIN second_table ON first_table.sum = second_table.min_sum
                           AND first_table.company_id = second_table.company_id
