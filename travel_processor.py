import sys
import csv

def read_travel_data(filename):
    """
    Read travel data from csv.
    Returns list of rows as dictionaries.
    """
    data = []
    try:
        with open(filename, mode='r', newline='', encoding='utf-8') as file:
            reader = csv.DictReader(file)
            for row in reader:
                try:
                    row['distance_km'] = float(row['distance_km'])
                    row['travel_time_hr'] = float(row['travel_time_hr'])
                    row['travel_cost_Gbp'] = float(row['travel_cost_Gbp'])
                    data.append(row)
                except ValueError:
                    continue
        return data
    except FileNotFoundError:
        print(f"Error: File '{filename}' not found.")
        sys.exit(1)
    except Exception as e:
        print(f"Error reading file: {e}")
        sys.exit(1)

def calculate_statistics(data):
    """
    Perform calculations:
    - total travel cost
    - average travel cost
    - average speed (distance/time)
    - total trips
    """
    total_cost = 0
    total_distance = 0
    total_time = 0
    count = 0

    for row in data:
        total_cost += row['travel_cost_Gbp']
        total_distance += row['distance_km']
        total_time += row['travel_time_hr']
        count += 1

    average_cost = total_cost / count if count else 0
    average_speed = total_distance / total_time if total_time else 0

    return {
        'total_cost': total_cost,
        'average_cost': average_cost,
        'average_speed': average_speed,
        'total_trips': count
    }

def write_summary(filename, stats):
    """
    Write summary to output file.
    """
    try:
        with open(filename, mode='w', encoding='utf-8') as file:
            file.write("travel data summary\n")
            file.write("==================\n")
            file.write(f"Total Trips: {stats['total_trips']}\n")
            file.write(f"Total Travel Cost (GBP): {stats['total_cost']:.2f}\n")
            file.write(f"Average Travel Cost (GBP): {stats['average_cost']:.2f}\n")
            file.write(f"Average Speed (Km/h): {stats['average_speed']:.2f}\n")
        print(f"Summary written to '{filename}'")
    except Exception as e:
        print(f"Error writing summary file: {e}")
        sys.exit(1)

def main():
    """
    Main program entry point.
    Accept CSV filename as command line argument.
    """
    if len(sys.argv) < 2:
        print("Usage: python travel_processor.py input_file.csv")
        sys.exit(1)

    input_file = sys.argv[1]
    data = read_travel_data(input_file)
    stats = calculate_statistics(data)
    write_summary("travel_summary.txt", stats)

if __name__ == "__main__":
    main()
