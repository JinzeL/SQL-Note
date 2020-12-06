# SQL Note
Note for SQL practice

## LeetCode SQL
[LeetCode SQL Problems](https://github.com/kamyu104/LeetCode-Solutions#sql)

|  #  | Title           |  Solution       | Difficulty    | Tag           |
|-----|---------------- | --------------- | ------------- |---------------|
0175 | [Combine Two Tables](https://leetcode.com/problems/combine-two-tables/) | [MySQL](./LeetCode/combine-two-tables.sql) | Easy         ||
0176 | [Second Highest Salary](https://leetcode.com/problems/second-highest-salary/) | [MySQL](./LeetCode/second-highest-salary.sql) | Easy         ||
0177 | [Nth Highest Salary](https://leetcode.com/problems/nth-highest-salary/) | [Set Method](./LeetCode/nth-highest-salary-1.sql)/ [Window Function](./LeetCode/nth-highest-salary-2.sql)| Medium        |Window Function, Set|
0178 | [Rank Scores](https://leetcode.com/problems/rank-scores/) | [MySQL](./LeetCode/rank-scores.sql) | Medium         ||
0180 | [Consecutive Numbers](https://leetcode.com/problems/consecutive-numbers/) | [MySQL](./LeetCode/consecutive-numbers.sql)/ [WF+CTE](./LeetCode/consecutive-numbers-1.sql)| Medium         |Join, Window Function|
0181 | [Employees Earning More Than Their Managers](https://leetcode.com/problems/employees-earning-more-than-their-managers/) | [MySQL](./LeetCode/employees-earning-more-than-their-managers.sql) | Easy         ||
0182 | [Duplicate Emails](https://leetcode.com/problems/duplicate-emails/) | [Join](./LeetCode/duplicate-emails.sql)/ [Group By](./LeetCode/duplicate-emails-1.sql) | Easy         |Group By|
0183 | [Customers Who Never Order](https://leetcode.com/problems/customers-who-never-order/) | [Join](./LeetCode/customers-who-never-order.sql) | Easy         ||
0184 | [Department Highest Salary](https://leetcode.com/problems/department-highest-salary/) | [WF+CTE](./LeetCode/department-highest-salary.sql) | Medium         |Window Function, CTE|
0185 | [Department Top Three Salaries](https://leetcode.com/problems/department-top-three-salaries/) | [WF+CTE](./LeetCode/department-top-three-salaries.sql) | Hard         |Window Function, CTE|
0196 | [Delete Duplicate Emails](https://leetcode.com/problems/delete-duplicate-emails/) | [MySQL](./LeetCode/delete-duplicate-emails.sql) | Easy         ||
0197 | [Rising Temperature](https://leetcode.com/problems/rising-temperature/) | [MySQL](./LeetCode/rising-temperature.sql) | Easy         |Date|
0262 | [Trips and Users](https://leetcode.com/problems/trips-and-users/) | [CASE](./LeetCode/trips-and-users.sql) | Hard         |CASE Statement|
0511 | [Game Play Analysis I](https://leetcode.com/problems/game-play-analysis-i/) | [MySQL](./LeetCode/game-play-analysis-i.sql) | Easy         |GROUP BY|
0512 | [Game Play Analysis II](https://leetcode.com/problems/game-play-analysis-ii/) | [MySQL](./LeetCode/game-play-analysis-ii.sql) | Easy         |GROUP BY, WINDOW FUNCTION |
0534 | [Game Play Analysis III](https://leetcode.com/problems/game-play-analysis-iii/) | [MySQL](./LeetCode/game-play-analysis-iii.sql) | Medium        |WINDOW FUNCTION |
0550 | [Game Play Analysis IV](https://leetcode.com/problems/game-play-analysis-iv/) | [MySQL](./LeetCode/game-play-analysis-iv.sql) | Medium        |JOIN, GROUP BY|
0569 | [Median Employee Salary](https://leetcode.com/problems/median-employee-salary/) | [WHERE+CASE](./LeetCode/median-employee-salary.sql) | Hard       |Find Median, CASE statement in WHERE|
0570 | [Managers with at Least 5 Direct Reports](https://leetcode.com/problems/managers-with-at-least-5-direct-reports/) | [MySQL](./LeetCode/managers-with-at-least-5-direct-reports.sql) | Medium        |GROUP BY|
0571 | [Find Median Given Frequency of Numbers](https://leetcode.com/problems/find-median-given-frequency-of-numbers/) | [MySQL](./LeetCode/find-median-given-frequency-of-numbers.sql) | Hard        |Median, WINDOW FUNCTION, CASE|
0574 | [Winning Candidate](https://leetcode.com/problems/winning-candidate/) | [MySQL](./LeetCode/winning-candidate.sql) | Medium        |JOIN, GROUP BY|
0577 | [Employee Bonus](https://leetcode.com/problems/employee-bonus/) | [MySQL](./LeetCode/employee-bonus.sql) | Easy         ||
0578 | [Get Highest Answer Rate Question](https://leetcode.com/problems/get-highest-answer-rate-question/) | [MySQL](./LeetCode/get-highest-answer-rate-question.sql) | Medium        |CASE statement in ORDER BY|
0579 | [Find Cumulative Salary of an Employee](https://leetcode.com/problems/find-cumulative-salary-of-an-employee/) | [MySQL](./LeetCode/find-cumulative-salary-of-an-employee.sql) | Hard        |WINDOW FUNCTION|
0580 | [Count Student Number in Departments](https://leetcode.com/problems/count-student-number-in-departments/) | [MySQL](./LeetCode/count-student-number-in-departments.sql) | Medium        |JOIN|
0584 | [Find Customer Referee](https://leetcode.com/problems/find-customer-referee/) | [MySQL](./LeetCode/find-customer-referee.sql) | Easy         ||
0585 | [Investments in 2016](https://leetcode.com/problems/investments-in-2016/) | [MySQL](./LeetCode/investments-in-2016.sql) | Medium         |GROUP BY *2, WINDOW FUNCTION|

### Notes
1. Thinking about when should use 'DISTICT' in SELECT satement
2. `SELECT () AS ...` Should be used one more time outsied the main SELECT when 'null' is needed to output
3. Set Method
4. Window Fuction - [link](https://mode.com/sql-tutorial/sql-window-functions/)
    ```
   window_function_name(expression) OVER ( 
   [partition_defintion]
   [order_definition]
   [frame_definition]
   )
   ```

*window_function_name:*

- `RANK()` would give the identical rows a rank of 2, then skip ranks 3 and 4, so the next result would be 5
- `DENSE_RANK()` would still give all the identical rows a rank of 2, but the following row would be 3—no ranks would be skipped.
- `NTILE(*# of buckets*)` : NTILE(4) quartile, NTILE(100) percentile
- `LAG/LEAD()` : LAG or LEAD to create columns that pull values from other rows—all you need to do is enter which column to pull from and how many rows away you'd like to do the pull. LAG pulls from previous rows and LEAD pulls from following rows

*partition_defintion:* `PARTITION BY <expression>[{,<expression>...}]`

*order_definition:* `ORDER BY <expression> [ASC|DESC], [{,<expression>...}]`

*frame_definition:* `frame_unit {<frame_start>|<frame_between>}`

frame_start:

- `UNBOUNDED PRECEDING` frame starts at the first row of the partition.
- `N PRECEDING` a physical N of rows before the first current row. N can be a literal number or an expression that evaluates to a number.
- `CURRENT ROW` the row of the current calculation

frame_between: `RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW` (default)

- frame_start: as mentioned previously.
- `UNBOUNDED FOLLOWING` the frame ends at the final row in the partition.
- `N FOLLOWING` a physical N of rows after the current row.

5. Common Table Expression (CTE)
    ```
    WITH cte_name (column_list) AS (
        query
    ) 
    SELECT * FROM cte_name;
    ```
6. Date function

    - `DATEDIFF(date1, date2)` : difference of date1 - date2

7. CASE Statement

    - `CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;`