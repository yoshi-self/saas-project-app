require "application_system_test_case"

class ArtifactsTest < ApplicationSystemTestCase
  setup do
    @artifact = artifacts(:one)
  end

  test "visiting the index" do
    visit artifacts_url
    assert_selector "h1", text: "Artifacts"
  end

  test "creating a Artifact" do
    visit artifacts_url
    click_on "New Artifact"

    fill_in "Key", with: @artifact.key
    fill_in "Name", with: @artifact.name
    fill_in "Project", with: @artifact.project_id
    click_on "Create Artifact"

    assert_text "Artifact was successfully created"
    click_on "Back"
  end

  test "updating a Artifact" do
    visit artifacts_url
    click_on "Edit", match: :first

    fill_in "Key", with: @artifact.key
    fill_in "Name", with: @artifact.name
    fill_in "Project", with: @artifact.project_id
    click_on "Update Artifact"

    assert_text "Artifact was successfully updated"
    click_on "Back"
  end

  test "destroying a Artifact" do
    visit artifacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Artifact was successfully destroyed"
  end
end
