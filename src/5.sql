DROP TABLE IF EXISTS profit, min_profit;

CREATE TEMP TABLE profit AS (
  SELECT company_id AS company_id, customer_id AS customer_id, customers.name AS customer_name, projects.id, sum(projects.cost) AS sum
  FROM projects
    INNER JOIN companies_projects ON projects.id = companies_projects.project_id
    INNER JOIN customers_projects ON companies_projects.project_id = customers_projects.project_id
    INNER JOIN customers ON customers.id = customers_projects.customer_id
  GROUP BY company_id, customer_id, projects.id, customer_name
);


CREATE TEMP TABLE min_profit AS (
  SELECT company_id, min(sum) AS min_cost
  FROM profit
  GROUP BY company_id
);


SELECT profit.customer_id, profit.company_id, profit.customer_name, profit.sum
FROM profit
  INNER JOIN min_profit ON profit.sum = min_profit.min_cost
                           AND profit.company_id = min_profit.company_id