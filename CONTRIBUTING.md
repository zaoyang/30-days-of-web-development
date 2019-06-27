# Contributing Guide

## Running

Install the dependencies:

```
yarn
```

If you want to edit `day-01`, you will be writing to the \*\*`day-01.cq.md` file. You can preview like so:

```
cd day-01
../node_modules/.bin/cqmd --watch day-01.cq.md --output day-01.md

# new tab (optional)
cd day-01
live-server
```

## Previewing with VSCode

- Open the `.cq.md` file (e.g. `day-01.cq.md`)
- Open the `.md` file as well (e.g. `day-01.md`)
- Click on the `[Preview]` tab and run `CMD-P` -> `Markdown: Toggle Preview Locking`
- Update `day-01.cq.md` and the preview will update automatically
