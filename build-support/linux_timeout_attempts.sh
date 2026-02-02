#!/bin/bash
set -e

num_attempts=$1
attempt_timeout_minutes=$2
shift 2
command="$@"

for ((i=1; i<=num_attempts; i++)); do
  start_time=$(date +%s)
  
  echo ""
  echo "═══════════════════════════════════════════════════════════════════="
  echo "🚀 ATTEMPT $i OF $num_attempts - STARTING"
  echo "   Timeout: $attempt_timeout_minutes minutes"
  echo "   Started at: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo "═══════════════════════════════════════════════════════════════════="
  echo ""
  
  if timeout "${attempt_timeout_minutes}m" bash -c "$command"; then
    end_time=$(date +%s)
    duration=$((end_time - start_time))
    minutes=$((duration / 60))
    seconds=$((duration % 60))
    
    echo ""
    echo "═══════════════════════════════════════════════════════════════════="
    echo "✅ ATTEMPT $i SUCCEEDED"
    echo "   Duration: $minutes minutes $seconds seconds"
    echo "   Finished at: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
    echo "═══════════════════════════════════════════════════════════════════="
    echo ""
    exit 0
  fi
  
  exit_code=$?
  end_time=$(date +%s)
  duration=$((end_time - start_time))
  minutes=$((duration / 60))
  seconds=$((duration % 60))
  
  if [ $exit_code -eq 124 ]; then
    echo ""
    echo "═══════════════════════════════════════════════════════════════════="
    echo "⏰ ATTEMPT $i TIMED OUT"
    echo "   Duration: $minutes minutes $seconds seconds"
    echo "   Time: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
    echo "═══════════════════════════════════════════════════════════════════="
    echo ""
  else
    echo ""
    echo "═══════════════════════════════════════════════════════════════════="
    echo "❌ ATTEMPT $i FAILED"
    echo "   Exit code: $exit_code"
    echo "   Duration: $minutes minutes $seconds seconds"
    echo "   Time: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
    echo "═══════════════════════════════════════════════════════════════════="
    echo ""
  fi
  
  if [ $i -lt $num_attempts ]; then
    echo "🔄 Preparing for next retry..."
    echo "   Waiting 10 seconds before next attempt..."
    sleep 10
    echo "   Ready for next attempt"
  fi
done

echo ""
echo "╔══════════════════════════════════════════════════════════════════╗"
echo "║  ❌ ALL $num_attempts ATTEMPTS FAILED                               "
echo "║  Time: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
echo "╚══════════════════════════════════════════════════════════════════╝"
echo ""
exit 1
