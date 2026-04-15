{% test expect_column_max_to_be_between(model, column_name, max_value, min_value=0) %}
select 1
from (
    select max({{ column_name }}) as max_val
    from {{ model }}
) t
where max_val > {{ max_value }} or max_val < {{ min_value }}
{% endtest %}