@if(getSettingImageLink("popupModal") != '')
<div class="modal fade bd-example-modal-lg newyear-modal" id="newyear" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <div class="container-fluid p-0">
          <div class="row">
            <div class="col-12">

              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
              <div class="content">
                <img src="{{ getSettingImageLink("popupModal") }}" alt="newyear" width="100%">

              </div>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endif