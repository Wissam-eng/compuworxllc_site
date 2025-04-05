  <!--  logo section -->
  <section class="blog ratio3_2 pt-0 section-b-space slick-default-margin">
      <div class="container border-section border-bottom-0">
          <div class="row section-t-space">
              <div class="col-md-12 pt-4 mt-4">
                  <div class="title2">
                      <h2 class="title-inner2">{{ getSettingValue('blogTitle_'.app()->getLocale()) }}</h2>
                  </div>
                  <div class="slide-3 no-arrow">
                      @forelse ($blogs as $blog)
                      <div class="col-md-12">
                          <a href="{{ route('e-commerce.blogDetails', ['blog' => $blog->id]) }}">
                              <div class="classic-effect">
                                  <div>
                                      <img alt="" src="{{ asset('uploads/blogs/'.$blog->id.'/'.$blog->image) }}" class="img-fluid blur-up lazyload bg-img">
                                      <span></span>
                                  </div>
                              </div>
                          </a>
                          <div class="blog-details">
                              <a href="{{ route('e-commerce.blogDetails', ['blog' => $blog->id]) }}">
                                  <h4>{{ $blog['title_'.app()->getLocale()] }}</h4>
                              </a>

                              <hr class="style1">
                          </div>
                      </div>
                      @empty
                      <div class="col-md-12">
                          <h2>{{trans('common.nothingToView')}}</h2>
                      </div>
                      @endforelse

                  </div>
              </div>
          </div>
      </div>
  </section>
  <!--  logo section end-->