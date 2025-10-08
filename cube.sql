SELECT
  COALESCE(state, 'Total') state,
  SUM(salary) AS salary
FROM
  salary_reports
GROUP BY
  CUBE (state)
ORDER BY
  salary;