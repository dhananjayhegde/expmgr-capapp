# Data Model

## Entities

### Master Data

- Category - expense or income category, for grouping them
- Account - can be Personal i.e. self; other persons, a specific vehicle, house, property etc. This helps to record give/take and investment into a property or expense for a given asset (vehicle, land, house) etc.
- PaymentMode - Card, Account Transfer, UPI etc.
- PaymentAccount - Specific bank account, debit/credit card etc.
- Tag - another level of taxonomy above Category. One expense may have different tags, one tag may associated with different expenses

### Transactional Data

- JournalEntryToTag - link between a tag and an expense entry
- JournalEntry - one specific expense entry in the journal

### Special Transactional Data

- SharedJournal - Imagine splitwise, expenses are split beteen multiple accounts
- SharedJournalEntry - an entry in a shared journal
- ShareOfAccount - share of each account wihthin an entry in such journal

---

# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

| File or Folder | Purpose                              |
| -------------- | ------------------------------------ |
| `app/`         | content for UI frontends goes here   |
| `db/`          | your domain models and data go here  |
| `srv/`         | your service models and code go here |
| `package.json` | project metadata and configuration   |
| `readme.md`    | this getting started guide           |

## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).

## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.
