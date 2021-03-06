SELECT projects.id, projects.name, sum(developers.salary) AS salary
FROM projects
  INNER JOIN projects_developers ON projects.id = projects_developers.project_id
  INNER JOIN developers ON developers.id = projects_developers.developer_id
GROUP BY projects.id
ORDER BY min(salary)
LIMIT 1;