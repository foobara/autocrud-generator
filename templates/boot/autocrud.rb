require "foobara/autocrud"

Foobara::Autocrud.base = Foobara::Persistence.default_base

# If you want to create commands for an exiting entity, you can do it like this:
# Foobara::Autocrud::CreateCommands.run!(
#   entity_class: SomeOrg::SomeDomain::User,
#   commands: %i[
#     create
#     update_atom
#     update_aggregate
#     hard_delete
#     find
#     find_by
#     query
#     query_all
#     append
#   ]
# )

# If you want to create a new type that will be persisted and reloaded on boot, you can do it like this:
# Note: this will automatically create all autocrud commands for it.
# Foobara::Autocrud::CreateType.run!(
#   type_symbol: :User,
#   domain: "SomeOrg::SomeDomain",
#   type_declaration: {
#     id: :integer,
#     first_name: :string,
#     last_name: :string,
#     email: :string
#   }
# )
