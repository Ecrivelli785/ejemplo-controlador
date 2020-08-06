require "application_system_test_case"

class OrdenTrabajosTest < ApplicationSystemTestCase
  setup do
    @orden_trabajo = orden_trabajos(:one)
  end

  test "visiting the index" do
    visit orden_trabajos_url
    assert_selector "h1", text: "Orden Trabajos"
  end

  test "creating a Orden trabajo" do
    visit orden_trabajos_url
    click_on "New Orden Trabajo"

    fill_in "Cliente", with: @orden_trabajo.cliente
    fill_in "Post", with: @orden_trabajo.post
    fill_in "Producto", with: @orden_trabajo.producto
    click_on "Create Orden trabajo"

    assert_text "Orden trabajo was successfully created"
    click_on "Back"
  end

  test "updating a Orden trabajo" do
    visit orden_trabajos_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @orden_trabajo.cliente
    fill_in "Post", with: @orden_trabajo.post
    fill_in "Producto", with: @orden_trabajo.producto
    click_on "Update Orden trabajo"

    assert_text "Orden trabajo was successfully updated"
    click_on "Back"
  end

  test "destroying a Orden trabajo" do
    visit orden_trabajos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Orden trabajo was successfully destroyed"
  end
end
