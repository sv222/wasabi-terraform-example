resource "wasabi_user" "users" {
  for_each = toset(var.user_names)
  name     = each.value
  lifecycle {
    ignore_changes = [name]
  }
}