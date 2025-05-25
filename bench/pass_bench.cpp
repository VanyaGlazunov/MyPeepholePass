#include <benchmark/benchmark.h>
#include <vector>
#include <random>
#include <chrono>


long long cube_of_sum(long long a, long long b) {
    return a*a*a + 3*a*a*b + 3*a*b*b + b*b*b;
}

std::vector<long long> A_data;
std::vector<long long> B_data;
const int NUM_ELEMENTS = 10'000'000; 

void InitializeData() {
    if (!A_data.empty()) return; 

    A_data.resize(NUM_ELEMENTS);
    B_data.resize(NUM_ELEMENTS);
    std::mt19937_64 rng(std::chrono::steady_clock::now().time_since_epoch().count());
    std::uniform_int_distribution<long long> distrib(-100, 100); 
    for (int i = 0; i < NUM_ELEMENTS; ++i) {
        A_data[i] = distrib(rng);
        B_data[i] = distrib(rng);
    }
}

static void BM_CubeOfSum(benchmark::State& state) {
    InitializeData(); 

    long long local_sum = 0; 
    for (auto _ : state) { 
        for (int i = 0; i < NUM_ELEMENTS; ++i) {
            local_sum += cube_of_sum(A_data[i], B_data[i]);
        }
        benchmark::DoNotOptimize(local_sum);
    }
    
    state.SetItemsProcessed(state.iterations() * NUM_ELEMENTS);
    
}

BENCHMARK(BM_CubeOfSum);



int main(int argc, char** argv) {
    InitializeData(); 
    ::benchmark::Initialize(&argc, argv);
    if (::benchmark::ReportUnrecognizedArguments(argc, argv)) return 1;
    ::benchmark::RunSpecifiedBenchmarks();
    ::benchmark::Shutdown();
    return 0;
}