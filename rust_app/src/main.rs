#[link(name = "../cpp_dll/bin/cpplib")]
extern "C" {
    fn load_cpp_dll();
}

fn main() {
    println!("Hello from Rust world!");
    unsafe {
        load_cpp_dll();
    }

    // prevent from exiting
    std::io::stdin().read_line(&mut String::new()).unwrap();
}
