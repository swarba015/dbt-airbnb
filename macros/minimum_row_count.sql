{% test minimum_row_count(model, min_row_count) %}
select 1
from (
    select count(*) as row_count
    from {{ model }}
) t
where row_count < {{ min_row_count }}
{% endtest %}