{% test expect_row_count_to_equal_other_table(model, compare_model) %}
select 1
from (
    select
        (select count(*) from {{ model }}) as row_count,
        (select count(*) from {{ compare_model }}) as compare_row_count
) t
where row_count != compare_row_count
{% endtest %}