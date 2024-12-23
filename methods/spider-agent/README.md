# Spider-Agent

An Agent Method Baseline for Spider 2.0 based on Docker environment.


## 🚀 Quickstart

### Setup

#### 4. Run Spider-Agent

##### Set LLM API Key

```
export AZURE_API_KEY=your_azure_api_key
export AZURE_ENDPOINT=your_azure_endpoint
export OPENAI_API_KEY=your_openai_api_key
export GEMINI_API_KEY=your_genmini_api_key
```

##### Run 


```python
python run.py --suffix <The name of this experiment>
python run.py --model gpt-4o --suffix test1
```






### Evaluation

#### Extract Results

Reorganize run results into a standard submission format, here we store the answer directly into the evaluation suite

```python
python get_spider2_submission_data.py --experiment_suffix <The name of this experiment> --results_folder_name <Standard Submission Folders>
python get_spider2_submission_data.py --experiment_suffix gpt-4o-test1 --results_folder_name ../../spider2/evaluation_suite/gpt-4o-test1
```


## Agent Framework

#### Action

- `Bash`: Executes shell commands, such as checking file information, running code, or executing DBT commands.
- `CREATE_FILE`: Creates a new file with specified content.
- `EDIT_FILE`: Edits or overwrites the content of an existing file.
- `BIGQUERY_EXEC_SQL`: Executes a SQL query on BigQuery, with an option to save the results.
- `BQ_GET_TABLES`: Retrieves all table names and schemas from a specified BigQuery dataset.
- `BQ_GET_TABLE_INFO`: Retrieves detailed column information for a specific table in BigQuery.
- `BQ_SAMPLE_ROWS`: Samples a specified number of rows from a BigQuery table and saves them as JSON.
- `Terminate`: Marks the completion of the task, returning the final result or file path.



