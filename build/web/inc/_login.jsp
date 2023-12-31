<section class="vh-100" style="background-color: #508bfc;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">
              <form action="" method="post">
            <h3 class="mb-3 text-start">Sign in</h3>
            <h1 style="padding: 10px 0 10px 0;">
                <div class="link-danger">${error_login}</div></h1>
            <div class="mb-4 text-start">
              <label for="typeEmailX-2" class="form-label text-start">Email</label>
              <input type="email" name="email"id="typeEmailX-2" class="form-control form-control-lg" />
            </div>

            <div class="mb-4 text-start">
              <label for="typePasswordX-2" class="form-label text-start">Password</label>
              <input type="password"name="password" id="typePasswordX-2" class="form-control form-control-lg" />
            </div>

            <!-- Checkbox -->
            <div class="form-check d-flex justify-content-start mb-4">
              <input class="form-check-input" type="checkbox" value="" id="form1Example3" />
              <label class="form-check-label" for="form1Example3"> Remember password </label>
            </div>

            <div class="d-grid gap-2">
              <button class="btn btn-primary btn-lg" type="submit">Login</button>
              <button class="btn btn-primary btn-lg" style="background-color: #dd4b39;" type="submit">
                <i class="fab fa-google me-2"></i> Sign in with Google
              </button>
              <button class="btn btn-primary btn-lg" style="background-color: #3b5998;" type="submit">
                <i class="fab fa-facebook-f me-2"></i>Sign in with Facebook
              </button>
              <p class="text-center text-muted mt-5 mb-0">Dont have an account? <a href="register"
                    class="fw-bold text-body"><u>Login here</u></a></p>
            </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>