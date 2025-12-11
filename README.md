``` r
if (!require(remotes))
    install.packages("remotes")
remotes::install_github("xiehs211/apiSXY")
```

## Authentication

To use the OpenAI API, you need to provide an API key. First, sign up
for OpenAI API on [this page](https://openai.com/api/). Once you signed
up and logged in, you need to open [this
page](https://platform.openai.com), click on **Personal**, and select
**View API keys** in drop-down menu. You can then copy the key by
clicking on the green text **Copy**.

By default, functions of `{openai}` will look for `OPENAI_API_KEY`
environment variable. If you want to set a global environment variable,
you can use the following command (where
`xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx` should be replaced
with your actual key):

``` r
Sys.setenv(
    OPENAI_API_KEY = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
    OPENAI_API_URL = 'https://xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx/v1'
)
```


You can store the same values in your `.Renviron` file if you prefer a persistent configuration:

```
OPENAI_API_KEY=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
OPENAI_API_URL=https://xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx/v1
```

You can point `{openai}` to a third-party API provider by setting `OPENAI_API_URL`. The value should include the API version segment (for example `https://your-endpoint.example.com/v1`). The package automatically reads this value whether you add it via `usethis::edit_r_environ()` or `Sys.setenv()`.
